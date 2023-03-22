<?php
session_start();
include("include/connection.php");
	$searchinput=$_POST['searchInput'];

	$sql="SELECT * FROM `tbl_product` WHERE name LIKE '%$searchinput%' and `status`='1'";
	$result = mysqli_query($con,$sql);
	$rows=mysqli_num_rows($result);
	if($rows)
	{?>
    <?php $i=0;
		while($row=mysqli_fetch_array($result))
		{ $i++;?>
			<div class="col-6 <?php if(($i%2)==0){echo"pleft";}else{echo "pright";}?>">
            <div class="vcard card"> <a href="productdetails.php?pid=<?php echo encryptor('encrypt', $row['id']); ?>" class="postItem">
              <div class="imageWrapper"> <img src="<?php echo $row['images'];?>" alt="image" class="image"> </div>
              <p class="text-center"><?php echo $row['name'];?></p>
              <footer>₹ <?php echo number_format($row['price'], 2);?></footer>
              </a> </div>
          </div>
		
		<?php }?>



        <?php
	}else{ echo"<div class='text-center text-danger'>No search result found....</div>";}
	
	
?>
