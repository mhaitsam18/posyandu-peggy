<?php
include "hitungbmi.php";
$a = new hitungbmi();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Berat Badan</title>
    <style>
    *{
        background-color:hotpink;
    }

    div{
        margin : 180px auto;
        width : 23%;
        border : 0px solid black;
    }

    table{
        background-color : white;
    }
    
    </style>
</head>
<body>
    <div>
        <form action="" method="post">
        <table border="1">
            <tr>
                <td colspan="3"><center>Aplikasi Pengecekan Berat Badan <br>  <b>Ideal</b></center></td>
            </tr>
            <tr>
                <td>Tinggi Badan</td>
                <td>:</td>
                <td><input type="number" name="tb"></td>
            </tr>
            <tr>
                <td>Berat Badan</td>
                <td>:</td>
                <td><input type="text" name="bb"></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td>:</td>
                <td>
                    <input type="radio" name="jk" value="perempuan">Perempuan <br>
                    <input type="radio" name="jk" value="lakilaki">Laki-laki
                </td>
            </tr>
            <tr>
                <td colspan="3"><center><input type="submit" value="Submit" name="submit">
                <input type="reset" value="Reset" name="reset"></center></td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>

<?php
if(isset($_POST['submit'])){
    $tinggib = $_POST['tb'];
    $beratb = $_POST['bb'];
    $jeniskelamin = $_POST['jk'];
    $bmi = $beratb/($tinggib*$tinggib/10000);
    $a ->jika($jeniskelamin,$bmi);
}


?>