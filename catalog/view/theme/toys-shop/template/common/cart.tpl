<li class="toyscart toyscart2 cart cart box_1">
	<form action="#" method="post" class="last">
			<input type="hidden" name="cmd" value="_cart">
			<input type="hidden" name="display" value="1">
			<button class="top_toys_cart" type="button" name="submit" data-toggle="modal" data-target="#staplesbmincart" value="">
			<span class="fas fa-cart-arrow-down"></span>
			</button>
	</form>
</li>



<div class="modal fade" id="staplesbmincart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

			<form method="post" class="cart-form" action="<?php echo $checkout; ?>" target="">
				<button type="button" class="sbmincart-closer close btn btn-default" data-dismiss="modal" aria-hidden="true">&times;</button>
				
				<div class="modal-body">

				<?php if ($products) { ?>
					<ul	 class="modal-list">

						<?php foreach ($products as $product) { ?>

						<div class="sbmincart-item">

							<div class="sbmincart-details-name"><a class="sbmincart-name"
								href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
								<!-- <ul class="sbmincart-attributes"> </ul> -->
							</div>

							<div class="sbmincart-details-quantity"> <input class="sbmincart-quantity" data-sbmincart-idx="0"
								name="quantity_1" type="text" pattern="[0-9]*" value="<?php echo $product['quantity']; ?>" autocomplete="off"> </div>

							<div class="sbmincart-details-remove"> <button type="button" class="sbmincart-remove"
							onclick="cart.remove('<?php echo $product['cart_id']; ?>');">&times</button> </div>

								<!-- <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td> -->
							<div class="sbmincart-details-price"> 
								<span class="sbmincart-price">
								<?php echo $product['total']; ?>
								</span> 
							</div> 

						</div>
						<!-- li -->
						<?php } ?>

						</ul>
						<?php } else { ?>
						<!-- <li> -->
							<p class="text-center"><?php echo $text_empty; ?></p>
						<!-- </li> -->
					<!-- </ul> -->
				<?php } ?>

			</div>

				<?php if ($products) { ?>

					<div class="sbmincart-footer">
							<div class="sbmincart-subtotal"> Subtotal: <?php echo $totals[0]['text'];?> </div>
							<button  class="sbmincart-submit" type="submit" data-sbmincart-alt="undefined"><?php echo $text_checkout; ?></button>
						</div>
				<?php } ?>


			</form>
    </div>
  </div>
</div>

