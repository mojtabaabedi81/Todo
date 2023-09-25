
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"
          href=
                  "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src=
                    "https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    </script>
    <script src=
                    "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
    </script>
    <script src=
                    "https://code.jquery.com/jquery-3.4.1.js"
            integrity=
                    "sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous">

    </script>
    <style>
        .container {
            width: 90%;
            height: auto;
        }

        .foot {
            position: fixed;
            left: 10%;
            bottom: 0;
            width: 80%;
            text-align: center;
        }
    </style>

</head>
<body style="background-color: #302b63">
<center>
    <img src="4d2de200cdc1de2bb0675cceddfb5859.png" align="middle">
    <style>
        img {
            opacity: 30%;
        }
    </style>

    <div class="foot">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="input-group">
                    <input type="text"
                           class="form-control"
                           placeholder="Add Task"
                           id="text">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-success">
                            <i class="glyphicon glyphicon-plus">
                            </i></button>
                    </div>
                </div>
                <br>
                <br>
            </div>
        </div>
    </div>
    <br>
    <h2 class="text text-success">My Task</h2>
    <br>
    <div class="container">
        <!--for adding the tasks-->
    </div>
</center>

<script>
    $(document).ready(function () {
        $('.btn-success').click(function () {
            // If something is written

            $.ajax({
                type: 'POST',
                url: 'import_database.php',
                data: {data: $('#text').val(),
                action:'insert'},

            });

            if ($('#text').val().length != 0) {
                //Store previous data
                var x = $('.container').html();

                // Add typed text in alert container
                var y =
                    `<div class="alert alert-success alert-dismissible fade in" onclick="deleteTodo()">
<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                  ` + $('#text').val() + `</div>`;

                //Update
                $('.container').html(y + x);
                //Clear after addition
                $('#text').val("");
            } else alert("Enter some Text!");
        });
        $(document).on('click', '.alert', function () {
            if ($(this).css('text-decoration-line') == "none")
                $(this).css('text-decoration-line', 'line-through');
            else
                $(this).css('text-decoration-line', 'none');
        });
    });


    function deleteTodo(){

        prompt('are you sure?')
    }
</script>
</body>
</html>










