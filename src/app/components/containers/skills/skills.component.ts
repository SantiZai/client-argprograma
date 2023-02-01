import { BringSkillsService } from './../../../services/bring-skills.service';
import { Component, OnInit } from '@angular/core'

@Component({
  selector: 'app-skills',
  templateUrl: './skills.component.html',
  styleUrls: ['./skills.component.css']
})
export class SkillsComponent implements OnInit {

  skills: BringSkillsService = new BringSkillsService
  frontSkills!: {}[]
  backSkills!: {}[]

  ngOnInit(): void {
    this.frontSkills = this.skills.frontSkills()
    this.backSkills = this.skills.backSkills()
  }
}
