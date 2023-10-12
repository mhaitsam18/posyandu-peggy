<?php 

class hitungbmi{

    function jika($jenisk,$bmi)
    {
        if($jenisk="perempuan")
        {
            if($bmi<18)
            {
                echo "Under weight (kurus)";
            }else if($bmi>18 && $bmi<=25)
            {
                echo "Normal weight (normal)";
            }else if($bmi>25 && $bmi<=27)
            {
                echo "Over weight (kegemukan)";
            }else if($bmi>27)
            {
                echo "Obesitas";
            }
        }else if($jenisk="lakilaki")
        {
            if($bmi<17)
            {
                echo "Under weight (kurus)";
            }else if($bmi>17 && $bmi<=23)
            {
                echo "Normal weight (normal)";
            }else if($bmi>23 && $bmi<=27)
            {
                echo "Over weight (kegemukan)";
            }else if($bmi>27)
            {
                echo "Obesitas";
            }
        }else{
            echo "<script type='text/javascript'>
            alert('Inputan anda salah');
            window.location='beratbadan.php';
            </script>";
        }
    }
}

?>