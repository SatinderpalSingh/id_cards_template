<?php

  $conn = new mysqli("localhost", "root", "", "pdf_id_cards");

  $sql = "SELECT * FROM students;";
  $result = $conn->query($sql);

  $table = "<link rel='stylesheet' href='./style.css'/><table><tbody>";
  $i = 0;
  foreach($result as $student_data) {
    if($i % 5 == 0) $table .= "</tr><tr>";

    $table .= 
      "<td>
        <img class='logo' src='./college_logo.png'><br><br>
        <div class='second-section'>
          <div class='child-name'>{$student_data['name']}</div>
          <div class='child-class'>Class: {$student_data['class']}</div>
          <div class='child-details'>
            <span class='red_details'>F.Name</span>: {$student_data['f_name']}<br>
            <span class='red_details'>M.Name</span>: {$student_data['m_name']}<br>
            <span class='red_details'>Mob. No</span>: {$student_data['class']}<br>
            <span class='red_details'>Adm. No</span> : {$student_data['admission_no']}
            <span class='red_details'>D.O.B</span> : {$student_data['dob']}<br>
            <span class='red_details'>Address</span>: {$student_data['address']}<br>
            <br><br>
            <img class='logo' src='./sign.png'><br>
            <span>Principal</span>
          </div>
        </div>
      </td>";
    $i++;
  } 

  $table .= "</table></tbody>";

  // require_once 'dompdf/autoload.inc.php';
  require 'vendor/autoload.php';
  // reference the Dompdf namespace
  use Dompdf\Dompdf;
  // instantiate and use the dompdf class
  $dompdf = new Dompdf();


  $html_content = $table;
  // echo $html_content;

  
  $dompdf->getOptions()->setChroot($_SERVER["DOCUMENT_ROOT"]); 
  $dompdf->loadHtml($html_content);
  // (Optional) Setup the paper size and orientation
  $dompdf->setPaper('A4', 'landscape');
  // Render the HTML as PDF
  $dompdf->render();
  // Output the generated PDF to Browser
  $dompdf->stream();
?>
