import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-backskill',
  templateUrl: './backskill.component.html',
  styleUrls: ['./backskill.component.css']
})
export class BackskillComponent implements OnInit {

  @Input() back: any = [{}]

  ngOnInit(): void {
      console.log(this.back)
  }

}
