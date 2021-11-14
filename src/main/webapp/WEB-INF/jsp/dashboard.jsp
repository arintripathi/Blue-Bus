<!DOCTYPE html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

  <title>Hello, world!</title>

  <style>
    .nav-col {
      background-color: #3d6098;
    }

    .add-btn {
      background-color: #ff5e5b;
      display: block;
      width: 100%;
      font-size: large;
      border: 0px;
    }

    .input-cl {
      border: 1px dotted gray;
      background-color: rgb(230, 224, 224);
    }


    .selected-type {
      background-color: #3d6098;
      color: white;
    }

    .selected-format {
      border: 4px solid #3d6098;

    }
  </style>
</head>

<html>

<body>
  <nav class="navbar nav-col mb-3">
    <div class="container-fluid">
      <a class="navbar-brand px-2 m-0" href="#">
        <div class="pl-3">
          <img src="arrow.png" alt="" height="28" class="mx-2 d-inline-block" />
          <img src="bus.png" alt="" height="100" class="m-0 -inline-block" />
        </div>
      </a>
      <h2 class="text-white">Admin Page</h2>
    </div>
  </nav>

  <div class="container">
    <div class="row m-0">
      <div class="col-md-5 col-10 p-4 mt-md-4 mt-sm-1">
        <div class="text-center mt-md-3 p-md-3">
          <div class="pb-2">
            <button class="add-btn p-2 rounded-3 shadow">Add Bus</button>
          </div>
          <div id="route" onclick="choosediv(this)" class="border option rounded-3 p-md-3 p-2">
            Route Wise Migration
          </div>
          <div id="revenue" onclick="choosediv(this)" class="border option rounded-3 p-md-3 p-2">
            Revenue per bus
          </div>
          <div id="booked" onclick="choosediv(this)" class="border rounded-3 p-md-3 p-2">
            Number of ticket booked
          </div>
          <div id="perbus" onclick="choosediv(this)" class="border rounded-3 p-md-3 p-2">
            Per Bus ticket booking data
          </div>
        </div>
      </div>

      <div class="col-md-6 col-10 p-4 mt-md-4">
        <div class="text-center p-5">
          <img onclick="chooseformat(this)" class="" src="pdfimg.png" alt="pdf" />
          <img onclick="chooseformat(this)" class="" src="excelimg.png" alt="excel" />
        </div>
        <form>
          <div class="container-fluid">
            <div class="row justify-content-center">
              <div class="col-4 text-center pb-2">
                <label for="from-date">From Date:</label>
              </div>
              <div class="col-8 pb-2">
                <input class="input-cl" required type="date" name="from-date" id="from-date" />
              </div>
            </div>
            <div class="row justify-content-center">
              <div class="col-4 text-center pb-2">
                <label for="from-date">To Date:</label>
              </div>
              <div class="col-8 pb-2">
                <input class="input-cl" required type="date" name="to-date" id="to-date" />
              </div>
            </div>
            <div class="row m-0">
              <button class="add-btn p-2 rounded-3 shadow" type="button">
                Generate Report
              </button>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>

  <!-- Onclick Change -->
  <script>
    var divtype = "";
    var formattype = "";
    function choosediv(element) {
      divtype=element.id;
      if (document.querySelectorAll('.selected-type').length > 0) {
        document.querySelectorAll('.selected-type').forEach(el => {
          el.classList.remove('selected-type');
        })
      }
      element.classList.add('selected-type');
    }
    function chooseformat(element) {
      formattype=element.id;
      console.log(element.alt);
      if (document.querySelectorAll('.selected-format').length > 0) {
        document.querySelectorAll('.selected-format').forEach(el => {
          el.classList.remove('selected-format');
        })
      }
      element.classList.add('selected-format');
    }
    



  </script>
</body>

</html>