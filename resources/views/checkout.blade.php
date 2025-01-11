@extends('layouts.app')
@section('content')

<main class="pt-90">
    <div class="mb-4 pb-4"></div>
    <section class="shop-checkout container">
      <h2 class="page-title">Shipping and Checkout</h2>
      <div class="checkout-steps">
        <a href="{{route('cart.index')}}" class="checkout-steps__item active">
          <span class="checkout-steps__item-number">01</span>
          <span class="checkout-steps__item-title">
            <span>Shopping Bag</span>
            <em>Manage Your Items List</em>
          </span>
        </a>
        <a href="javascript:void(0)" class="checkout-steps__item active">
          <span class="checkout-steps__item-number">02</span>
          <span class="checkout-steps__item-title">
            <span>Shipping and Checkout</span>
            <em>Checkout Your Items List</em>
          </span>
        </a>
        <a href="javascript:void(0)" class="checkout-steps__item">
          <span class="checkout-steps__item-number">03</span>
          <span class="checkout-steps__item-title">
            <span>Confirmation</span>
            <em>Review And Submit Your Order</em>
          </span>
        </a>
      </div>
      <form name="checkout-form" action="{{route('cart.place.an.order')}}" method="POST">
        @csrf
        <div class="checkout-form">
          <div class="billing-info__wrapper">
            <div class="row">
              <div class="col-6">
                <h2>SHIPPING DETAILS</h2>
              </div>
              <div class="col-6">
              </div>
            </div>

            @if($address)
            <div class="row">
                        <div class="col-md-12">
                            <div class="my-account__address-list">
                                <div class="my-account__address-item">                                    
                                    <div class="my-account__address-item__detail">
                                        <p>{{$address->name}}</p>
                                        <p>{{$address->address}}</p>
                                   
                                        <p>Phone : {{$address->phone}}</p>                                        
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>  

            @else

            <div class="row mt-5">
              <div class="col-md-6">
                <div class="form-floating my-3">
                  <input type="text" class="form-control" name="name" required="" value="{{old('name')}}">
                  <label for="name">Full Name *</label>
                @error('name')  <span class="text-danger">{{$message}}</span>  @enderror
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating my-3">
                  <input type="text" class="form-control" name="phone" required="" value="{{old('phone')}}">
                  <label for="phone">Phone Number *</label>
                  @error('phone')  <span class="text-danger">{{$message}}</span>  @enderror
                </div>
              </div>
             
              <div class="col-md-12">
                <div class="form-floating my-3">
                  <input type="text" class="form-control" name="address" required="" value="{{old('address')}}">
                  <label for="address">Address *</label>
                  @error('address')  <span class="text-danger">{{$message}}</span>  @enderror
                </div>
              </div>
            </div>

            @endif
          </div>
          <div class="checkout__totals-wrapper">
            <div class="sticky-content">
              <div class="checkout__totals">
                <h3>Your Order</h3>
                <table class="checkout-cart-items">
                  <thead>
                    <tr>
                      <th>PRODUCT</th>
                      <th align="right">SUBTOTAL</th>
                    </tr>
                  </thead>
                  <tbody>
                  @foreach (Cart::instance('cart')->content() as $item)
                    <tr>
                      <td>
                      {{$item->name}} x {{$item->qty}}
                      </td>
                      <td align="right">
                      ${{$item->subtotal}}
                      </td>
                    </tr>
                 
                    @endforeach
                  </tbody>
                </table>
                @if(Session::has('discounts'))
                            <table class="checkout-totals">
                                <tbody>
                                    <tr>
                                        <th>Subtotal</th>
                                        <td class="text-right">${{Cart::instance('cart')->subtotal()}}</td>
                                    </tr> 
                                    <tr>
                                        <th>Discount {{Session("coupon")["code"]}}</th>
                                        <td class="text-right">-${{Session("discounts")["discount"]}}</td>
                                    </tr> 
                                    <tr>
                                        <th>Subtotal After Discount</th>
                                        <td class="text-right">${{Session("discounts")["subtotal"]}}</td>
                                    </tr>   
                                    <tr>
                                        <th>SHIPPING</th>
                                        <td class="text-right">Free</td>
                                    </tr>                             
                                    <tr>
                                        <th>VAT</th>
                                        <td class="text-right">${{Session("discounts")["tax"]}}</td>
                                    </tr>
                                    <tr class="cart-total">
                                        <th>Total</th>
                                        <td class="text-right">${{Session("discounts")["total"]}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        @else
                <table class="checkout-totals">
                  <tbody>
                    <tr>
                      <th>SUBTOTAL</th>
                      <td class="text-right">${{Cart::instance('cart')->subtotal()}}</td>
                    </tr>
                    <tr>
                      <th>SHIPPING</th>
                      <td class="text-right">Free shipping</td>
                    </tr>
                    <tr>
                      <th>VAT</th>
                      <td class="text-right">${{Cart::instance('cart')->tax()}}</td>
                    </tr>
                    <tr>
                      <th>TOTAL</th>
                      <td class="text-right">${{Cart::instance('cart')->total()}}</td>
                    </tr>
                  </tbody>
                </table>
                @endif
              </div>
              <div class="checkout__payment-methods">

              <div class="form-check">
                  <input class="form-check-input form-check-input_fill" type="radio" name="mode" value="card"
                    id="mode1">
                  <label class="form-check-label" for="mode1">
                   Debit or Credit Card
                   
                  </label>
                </div>


              <div class="form-check">
                  <input class="form-check-input form-check-input_fill" type="radio" name="mode" value="paypal"
                    id="mode2">
                  <label class="form-check-label" for="mode2">
                    Paypal
                   
                  </label>
                </div>
               
                
                <div class="form-check">
                  <input class="form-check-input form-check-input_fill" type="radio" name="mode" value="cod"
                    id="mode3">
                  <label class="form-check-label" for="mode3">
                    Cash on delivery
                   
                  </label>
                </div>
                
                <div class="policy-text">
                  Your personal data will be used to process your order, support your experience throughout this
                  website, and for other purposes described in our <a href="terms.html" target="_blank">privacy
                    policy</a>.
                </div>
              <div>
              @if(Session::has('error'))
              <p class="text-red fw-bold"> {{Session::get('error')}} </p>
              @endif
              </div>
              </div>
              <button class="btn btn-primary btn-checkout">PLACE ORDER</button>
            </div>
          </div>
        </div>
      </form>
    </section>
  </main>
@endsection