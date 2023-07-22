---
title: "100個のセルを動的に作成する #12"
date: "2023-07-23T00:30:00+09:00"
categories:
  - "Dev"
tags:
  - "HTML"
draft: "false"
---

```index.html
<html>
  <head>
    <style>
      .container {
        display: flex;
        flex-wrap: wrap;
        width: 500px;
        text-align: center;
      }
      .cell {
        width: 23px;
        height: 23px;
        border: 1px solid black;
      }
      .salmon {
        background-color: salmon;
      }
    </style>
  </head>
  <body>
    <div id="container" class="container"></div>
    <script>
      window.onload = function() {
        var container = document.getElementById('container');
        var coloredCells = [4, 10, 15, 20, 25, 30, 33, 88];
        for (var i = 0; i <= 99; i++) {
          var cell = document.createElement('div');
          cell.className = 'cell' + (coloredCells.includes(i) ? ' salmon' : '');
          cell.innerText = i;
          container.appendChild(cell);
        }
      };
    </script>
  </body>
</html>
```
