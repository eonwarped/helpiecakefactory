require 'cosgrove'

include Cosgrove::Utils

$cakes = <<-CAKES.split("\n")
![5be84e6b38c6c0bdc4bb3057185f10a2.png](https://cdn.steemitimages.com/DQmQPiNojsUcVHSfFWx9xVEhhjXoCQN4G8kjiLkAy9friqM/5be84e6b38c6c0bdc4bb3057185f10a2.png)
![7d5953f1d20f935a82091455399701fb.png](https://cdn.steemitimages.com/DQmaJNEHDLvSiVh7PULZQoRsragWmpT2LroZjC6bTLWxU1f/7d5953f1d20f935a82091455399701fb.png)
![23.png](https://cdn.steemitimages.com/DQmTpdoHZHEFyZPjQdfmh6NYAZWoVK6rDJqmuFMF3WVN1VY/23.png)
![90137bf8755aa60d992d2f7a3bab964b.png](https://cdn.steemitimages.com/DQmX5wdUbG54PxxcdsFVaBCJkSDsbZeeUML4r8Qe4KfS31b/90137bf8755aa60d992d2f7a3bab964b.png)
![201010-xl-towering-coconut-layer-cake.jpg](https://cdn.steemitimages.com/DQmd3NEQEe82xk8ic41pDys1gu4kvhSqoJjZGTzZdFJogdn/201010-xl-towering-coconut-layer-cake.jpg)
![300449_B.png](https://cdn.steemitimages.com/DQmaYXgYW7G3ejmkmphg9GayASZGLQpvFP4wpq3jznj1poe/300449_B.png)
![a-145.jpg](https://cdn.steemitimages.com/DQmeqaFCy6DfsmGKeE2iUd6CJvmcjJNKMVWxLtUANidbyZv/a-145.jpg)
![BakedNYC_Cakes_1345by760px_20180119_36-1024x579.png](https://cdn.steemitimages.com/DQmNTng2HA9wiVu9nCQQaz85wBYphDMs8gzxciJ6dXtjDX8/BakedNYC_Cakes_1345by760px_20180119_36-1024x579.png)
![cake-742135_640.png](https://cdn.steemitimages.com/DQmX5dyu8uW698Z2eYFgExUrR4fd9ZFwnxWbNwes7CyTVKT/cake-742135_640.png)
![coconutcake01.png](https://cdn.steemitimages.com/DQmcwJFtZW7sG6HAikqN4oM1dt9ardLqTSgUPt5Vir2ychp/coconutcake01.png)
![counter-524x432.png](https://cdn.steemitimages.com/DQmVbrRkKAV5AZqrF7LpuYnRJuChNWUUhJVtVK3T1v5E6Qj/counter-524x432.png)
 ![lemonCrunch-v2.png](https://cdn.steemitimages.com/DQmSE7uiycNnJFg9SWrRDJ2scX2RuCzeddBQ2m9dxXs4Jrz/lemonCrunch-v2.png)
![Lemon-Mousse-Cake_2.png](https://cdn.steemitimages.com/DQmPXA56YrF9QSdEFkAMsrFJqS9ywEPgUMXfHZibu5WtVxH/Lemon-Mousse-Cake_2.png)
![Transparent+Cake.png](https://cdn.steemitimages.com/DQmXLwgUJSuQdB2GLfvxrPmQc1L7dDsihdg7BzTBRkiHJ5b/Transparent+Cake.png)
![3a2dd10c0e8f310b839c959c7ffc1941.gif](https://cdn.steemitimages.com/DQmYqYBXaFJN42ui2fbb49vmb2bXnegiNHpXHGCpeufd5xP/3a2dd10c0e8f310b839c959c7ffc1941.gif)
![200 (1).gif](https://cdn.steemitimages.com/DQmQVdv98DXjnxpCz5DfM7CMJh2gmCW6dCZi9EcjnywrwAC/200%20(1).gif)
![200.gif](https://cdn.steemitimages.com/DQmbkd9p7qNDNqSNzQ9cyhby8qkeSFJ2GcnEfdgP78Sfwsq/200.gif)
![anigif_sub-buzz-32346-1465509779-14.gif](https://cdn.steemitimages.com/DQmc6S2mkFJ1cvbf9xUqukVKgyA6ngVzuP9nFUk4HpmhVBR/anigif_sub-buzz-32346-1465509779-14.gif)
![big-digivate-cake-gif.gif](https://cdn.steemitimages.com/DQmWvMeknd87N3rUppKfPrGZyf6xdbdfptC5yTHw64Fusoj/big-digivate-cake-gif.gif)
![DirectSickIndianrockpython-size_restricted.gif](https://cdn.steemitimages.com/DQmbwBGnp9uszFNVgiRUR5yp11t7XZxpeEmjnUttizeqCCW/DirectSickIndianrockpython-size_restricted.gif)
![Double-Chocolate-Cake-GIF.gif](https://cdn.steemitimages.com/DQmT83aHNFL55dzfXmp6aHL3cGNLzRmdJKAm96vHCoaFY6T/Double-Chocolate-Cake-GIF.gif)
![ee8211ae85f8f741a280fe323fe26b56.gif](https://cdn.steemitimages.com/DQmTKp4TLji7WSaNzd1RpiLa6rLwMa83ZA7vVtPPhUGi2HU/ee8211ae85f8f741a280fe323fe26b56.gif)
![EFy92f.gif](https://cdn.steemitimages.com/DQmQQ5Mb5VsuGPBLmwm3qouhDvw4Vo3amC1scVSzAKU4goR/EFy92f.gif)
![giphy (1).gif](https://cdn.steemitimages.com/DQmUd6NEHYbtmvMFt12ULeNunX6J3HSxUR5hAQKoDz79t2j/giphy%20(1).gif)
![giphy.gif](https://cdn.steemitimages.com/DQmcC6rT2mNNFDuntVgdMD3McsJGMj4shEorp559RdNG6cv/giphy.gif)
![MetallicAmazingGourami-small.gif](https://cdn.steemitimages.com/DQmcrKf3sgcBE6WynBgfLEBKtdaFEuWoFKLqnkoC8ZhRDps/MetallicAmazingGourami-small.gif)
![output_mZmzVo.gif](https://cdn.steemitimages.com/DQmeThZpxxWtJyh8xjAgUnc8CpFEQ8w6LfdJzRhWSUt4m12/output_mZmzVo.gif)
![output_t2QNrc.gif](https://cdn.steemitimages.com/DQmYnEBHQoxL2yQeLeNAeHULXNM2iGoKpwL7VAoQBex6pyR/output_t2QNrc.gif)
![pancakes.gif](https://cdn.steemitimages.com/DQmaJjzqZ4CQ7S3TTLgbnEHj2VhxCho5YmcRFxRE4z3humc/pancakes.gif)
![tenor.gif](https://cdn.steemitimages.com/DQmSAcK6NQ5HZ7w2mEmM1Mc8n8iuC9nAcAjdedP7FyC6U7x/tenor.gif)
![tumblr_ovyx8u876d1u9ooogo1_1280.gif](https://cdn.steemitimages.com/DQmPzAXyh6XWTwFsgk9jvsjoSJxqgQGeeov5CN8xVPyHf9X/tumblr_ovyx8u876d1u9ooogo1_1280.gif)
![tumblr_p9pc01rgz11xql2nto2_250.gif]![giphy (2).gif](https://cdn.steemitimages.com/DQmakUmu559bQH9Jq8tuDJiYxVCG2r9eCuA7uiH1E8agEJt/giphy%20(2).gif)(https://cdn.steemitimages.com/DQmYmayMdDJwRGVTQDoB27NAXh9Ke6SzFjusJr6STzX4Bya/tumblr_p9pc01rgz11xql2nto2_250.gif)
![tumblr_p14cetwqpu1sa9pj8o6_250.gif](https://cdn.steemitimages.com/DQmVLiqkTexuB4vupxYUCCTMXFh8KSDNdhzU3HTmCTvqdd2/tumblr_p14cetwqpu1sa9pj8o6_250.gif)
![tumblr_ntmii30rn61qdtql4o1_500.gif](https://cdn.steemitimages.com/DQmVKY2LvNFQivqRDhZh1uCuvwerHMPFb4K1yTga6bhDm4W/tumblr_ntmii30rn61qdtql4o1_500.gif)
![15-cute-easter-cupcake-ideas-decorating-recipes-for-easter-easter-cupcake-ideas.jpg](https://cdn.steemitimages.com/DQmRgZy78juiL4gELcKg3ywX6bgefQguDcTUZGC5HCbYYLW/15-cute-easter-cupcake-ideas-decorating-recipes-for-easter-easter-cupcake-ideas.jpg)
![563.png](https://cdn.steemitimages.com/DQmU2um8zgpFLCeC7cQGAaEUjx7DXNejqfkCLFJWQ9hLH8P/563.png)
![580b57fbd9996e24bc43c0b4.png](https://cdn.steemitimages.com/DQmNQwwwYivgqRY4B5bkbFBsLxZoBpoBwTmg5UqSFhqj63R/580b57fbd9996e24bc43c0b4.png)
![09310f9db572d6e420a3e170c73d9b48.jpg](https://cdn.steemitimages.com/DQmNw811B5YJ3i3XgwYPZJjWCE5AJJcA2o2rapq9pwjYPW2/09310f9db572d6e420a3e170c73d9b48.jpg)
![1458596029-delish-robins-egg-cheesecake-1550268341.jpg](https://cdn.steemitimages.com/DQmf5MZ64BEWJpQXjFJj4j5pAFSNSfi2F37D29CUVGyqjys/1458596029-delish-robins-egg-cheesecake-1550268341.jpg)
![1493220034-pink-velvet-cake.jpg](https://cdn.steemitimages.com/DQmS6zN7LaeG7wTPsDFSiH6FLK2F9tZev2A3Wp1DPFwuLUh/1493220034-pink-velvet-cake.jpg)
![1483135267324-cake_navigation_20161230_slices_null.png](https://cdn.steemitimages.com/DQmcajepL51pc8coUPkGGh8yxJUPiEB7jo1nkw9z3GYRtx6/1483135267324-cake_navigation_20161230_slices_null.png)
![bigstock-Easter-cupcakes-18001238.jpg](https://cdn.steemitimages.com/DQmfJYpKANuJm7ZcrLC5eonWCS8oPPxErGUrra9u95QYHM8/bigstock-Easter-cupcakes-18001238.jpg)
![chocolate_cake_PNG1.png](https://cdn.steemitimages.com/DQmQa3yjPq7K3xJ5TkqQgypJTm6XLanSo92m5bfdsiZhKgu/chocolate_cake_PNG1.png)
![chocolate_cake_PNG39.png](https://cdn.steemitimages.com/DQmZq3d491RciN5j8VUDnBqopztLprU3AoeRF5ehWZQJ8Gn/chocolate_cake_PNG39.png)
![chocolate-cake-png-hd-birthday-cake-png-image-500.png](https://cdn.steemitimages.com/DQmQ3yUHrZvoiRuXFBDz4UN2Y61u4cZiGcZWzZVpyaHLPmu/chocolate-cake-png-hd-birthday-cake-png-image-500.png)
![chocolate-cake-png-hd-chocolate-cake-png-500.png](https://cdn.steemitimages.com/DQmdFGjzF2wtxPvY28CL7h4bPLzGa8aP3fG93kChMP1s5Nz/chocolate-cake-png-hd-chocolate-cake-png-500.png)
![clipart-cake-slice-9.png](https://cdn.steemitimages.com/DQmUa7PAu6XteQbtisFfxrUFBsq5rU4ZKk8EWyLjvdYhsim/clipart-cake-slice-9.png)
![file_176765_5_CupcakeCake.jpg](https://cdn.steemitimages.com/DQmbybG8bQsP2puD8MbsqKcyKXAmg19sKi4MPV51Ua6Z5VV/file_176765_5_CupcakeCake.jpg)
![img_4141.jpg](https://cdn.steemitimages.com/DQmWE1q1AuXMXd8B1TAhHiMrVQwZ45nRFzAYrYzGD2WkvU9/img_4141.jpg)
![img_Cute_pink_cake.jpg](https://cdn.steemitimages.com/DQmPsw4jutaYAfvhF7tYWbRMnaWA5w8HaU9CS8Wq4Mwg1Ft/img_Cute_pink_cake.jpg)
![Pastel-Layer-Cake-Slices-FTR.jpg](https://cdn.steemitimages.com/DQmbaZsAsMz3tXTqmbqgFj2ZnG1H8TECP2a1JUXNjLAazDq/Pastel-Layer-Cake-Slices-FTR.jpg)
![mens-chocolate-birthday-cake-new-chocolate-cake-for-birthday-ideas-of-mens-chocolate-birthday-cake.jpg](https://cdn.steemitimages.com/DQmXtahDF8abAFxyvpCc17uuCwFt7WgAidmKh6bdmjZPRJk/mens-chocolate-birthday-cake-new-chocolate-cake-for-birthday-ideas-of-mens-chocolate-birthday-cake.jpg)
![Birthday.jpg](https://cdn.steemitimages.com/DQmeRhqoNCgqX8byWTb3JjwZmdDVh28VA3n53Mb1sLMvEqy/Birthday.jpg)
![helpiecake-butterfly.png](https://steemitimages.com/640x0/https://cdn.steemitimages.com/DQmVGdiiiKtX9k4UjmZG65Hrg2aNYsijpMCaDwRdr3yGpYC/1a7333691183c9e0ede2f1286cd1c245.png)
![helpiecake-sparkly-cake.gif](https://steemitimages.com/0x0/https://cdn.steemitimages.com/DQmaLuTkmLzciky4faaru2QsH6XvDK2pj6GbzqBkqTjU87U/4fe83986a765f.gif)
![helpiecake-strawberry-animated.gif](https://steemitimages.com/0x0/https://cdn.steemitimages.com/DQmeZ1ZYTUcg4L6DVhq86SAx4R9odDhim278VTXyrYjnEGB/tumblr_mmaldvihhQ1rygc5yo1_500.gif)
![helpiecake-choco-animated.gif](https://steemitimages.com/0x0/https://cdn.steemitimages.com/DQmNYuBWUpyxb9ctu7CQiBScH7nngDo2GtHdCWZrGwa8RuC/tumblr_mgod7ugtRa1rvvqj8o1_500.gif)
![helpiecake-strawberry.png](https://cdn.steemitimages.com/DQmP66LaAGZVvLR7TWSHD1S8SjmWMxGLQuVMQetrFEoj66M/helpiecake-strawberry.png)
![helpiecake-dulce_napoleon_cake.png](https://cdn.steemitimages.com/DQmcyPLAF4HN9SfmA5mAzaDF5yfcFrq6NtVLSXsrdJ9Nt5s/helpiecake-dulce_napoleon_cake.png)
![helpiecake-torte-300441.png](https://cdn.steemitimages.com/DQmYhN6sNqSPx6T68oLKffJ8A9KdQ3UijEjbGeNDZv2REck/helpiecake-torte-300441.png)
![helpiecake-white-red-cake.png](https://cdn.steemitimages.com/DQmXVfpWVZ4q1X9N1ykdbJeH8cRhEtfY6bLE5gJiEDzs3t2/helpiecake-white-red-cake.png)
![helpiecake-white-chocolate-raspberry-truffle.png](https://cdn.steemitimages.com/DQmcurLbNH1bZa6VjbXZM7rnLjGivJaGZucs2BNyGXXtTxt/helpiecake-white-chocolate-raspberry-truffle.png)
![helpiecake-jamocha_almond_fudge_cake.png](https://cdn.steemitimages.com/DQmPVbkStw3fqtKjGxvbpeXHXt9EWiPgDySyUDsBf14wQrN/helpiecake-jamocha_almond_fudge_cake.png)
![helpiecake-chocolate-cake-ice-cream.png](https://cdn.steemitimages.com/DQmXRsVS4dxj41QWt2zebXUyMjE4Co4rrV5Xf57XKe4ebLC/helpiecake-chocolate-cake-ice-cream.png)
![helpiecake-chocolate-pastry.png](https://cdn.steemitimages.com/DQma3xsQrdSucUKhA6Ft99y3EqD1gNk2LxmnvYq9b93Z5vY/helpiecake-chocolate-pastry.png)
![helpiecake-chocolate-500.png](https://cdn.steemitimages.com/DQmdFGjzF2wtxPvY28CL7h4bPLzGa8aP3fG93kChMP1s5Nz/helpiecake-chocolate-500.png)
![helpiecake-chocolate-gateau-2.png](https://cdn.steemitimages.com/DQmU3Hu2USm7YQhbFyd6hhjWzYmF5ZBQd7xLZWFK2Xrx1rU/helpiecake-chocolate-gateau-2.png)
![helpiecake-chocolate-cake-425.png](https://cdn.steemitimages.com/DQmXcZj4ouayWpcC8JQSMM9YqHm84m9vmiyUobNTyxaUoVw/helpiecake-chocolate-cake-425.png)
![helpiecake-chocolate-cake.png](https://cdn.steemitimages.com/DQmSMHakv7bq1joQpgSQFCe1xFBTGNuBY2ZCHdKdmGi2MXP/helpiecake-chocolate-cake.png)
![helpiecake-chocolate-gateau.png](https://cdn.steemitimages.com/DQmVT59xe2pkMdMW2azvdhWxvFVpABrgBn5XQQhxdAzzj4f/helpiecake-chocolate-gateau.png)
![helpiecake-chocolate-cake-with-chocolate-cream.png](https://cdn.steemitimages.com/DQmPmJDYf7NidHD7uAHLHfvbmx8Yhd2wDqmuJKGHjSgVniz/helpiecake-chocolate-cake-with-chocolate-cream.png)
![helpiecake-red-velvet-cake.png](https://cdn.steemitimages.com/DQmQWQcwatJQe2z4pTEQ9URbw9E5xGhC7fxL7RvpsEfi8DV/helpiecake-red-velvet-cake.png)
![helpiecake-heart-cake.jpg](https://cdn.steemitimages.com/DQmZz6t71bkjX21jpQdUYLgpbKw48RCDHoCvRzZe64d2CyW/helpiecake-heart-cake.jpg)
CAKES

def select_cupcake()
  return $cakes.sample
end

bot = Cosgrove::Bot.new :prefix => '..', :on_success_upvote_job => -> event, slug, custom_message {
  author_name, permlink = parse_slug slug

  resteem_data = [
    :reblog, {
      account: "helpiecake",
      author: author_name,
      permlink: permlink
    }
  ]
  resteem = {
    type: :custom_json,
    required_auths: [],
    required_posting_auths: ["helpiecake"],
    id: "follow",
    json: resteem_data.to_json,
  }
  tx = new_tx :steem
  tx.operations << resteem 
  begin
    response = tx.process(true)
  rescue => e
    puts "Unable to resteem: #{e}"
    ap e
  end

  comment_tags = %w(helpiecake)
  comment_metadata = {
    tags: comment_tags
  }
  comment = {
    type: :comment,
    parent_author: author_name,
    parent_permlink: permlink,
    author: 'helpiecake',
    permlink: 're-helpiecake-comment-' + Time.new.to_i.to_s + 'z',
    title: '',
    json_metadata: comment_metadata.to_json,
    body: <<-BODY
Hello! 

This post has been manually curated, resteemed
and gifted with some virtually delicious cake
from the @helpiecake curation team!  
 

Much love to you from all of us at @helpie!
Keep up the great work! 

<a href="http://steemit.com/@helpie">
#{select_cupcake()}
</a>

#{custom_message}
BODY
  } 
  tx = new_tx :steem
  tx.operations << comment 
  begin
    response = tx.process(true)
  rescue => e
    puts "Unable to comment: #{e}"
    ap e
  end
}
bot.run
