import { Component, OnInit } from '@angular/core'
import Typed from 'typed.js'

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  ngOnInit(): void {
    new Typed('.name', {
      strings: ['Santiago Zaidan'],
      typeSpeed: 75
    })

    new Typed('.skills', {
      strings: ['web sites', 'web applications'],
      typeSpeed: 75,
      backSpeed: 75,
      loop: true
    })
  }

  title = 'portfolio-argprograma'

}
