<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>Problem Solving Skill</title>
    </head>
    <body>
        <?php
            function thirdLargest($arr, $arr_size) {
                if ($arr_size < 3) { 
                    echo "Invalid Input"; 
                    return; 
                } 
            
                $first = $arr[0]; 
                for ($i = 1; $i < $arr_size ; $i++) {
                    if ($arr[$i] > $first) {
                        $first = $arr[$i]; 
                    }
                }
                
                $second = 0; 
                for ($i = 0; $i < $arr_size ; $i++) {
                    if ($arr[$i] > $second && $arr[$i] < $first) {
                        $second = $arr[$i]; 
                    }
                }
                
                $third = 0; 
                for ($i = 0; $i < $arr_size ; $i++) {
                    if ($arr[$i] > $third && $arr[$i] < $second) {
                        $third = $arr[$i]; 
                    }
                }
                echo "The third largest is $first, $second, $third"; 
            }
        ?>
        <div class="container">
            <div class="row">
                <form action="" method="get">
                    <div class="col">
                        <div class="form-group">
                        <label for=""></label>
                        <input type="text" class="form-control" name="input" id="" value="<?= isset($_GET['input']) ? $_GET['input'] : '' ?>" placeholder="input">
                        <small id="helpId" class="form-text text-muted">Example: 3,4,8,10,12</small>
                        </div>
                        <div class="form-group">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="col">
                    <?php
                        if (isset($_GET['input'])) {
                            echo '<div class="alert alert-primary" role="alert"><strong>';
                            $arr = explode(',', $_GET['input']);
                            $n = sizeof($arr); 
                            thirdLargest($arr, $n);
                            echo '</strong></div>';
                        }
                    ?>
                </div>
            </div>
        </div>
    </body>
</html>
