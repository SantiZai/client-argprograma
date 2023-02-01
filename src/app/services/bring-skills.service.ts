import { Injectable } from '@angular/core'
import front from '../../config/front-skills.json'
import back from '../../config/back-skills.json'

@Injectable({
  providedIn: 'root'
})
export class BringSkillsService {

  constructor() { }

  frontSkills(): {}[] {
    return front
  }

  backSkills(): {}[] {
    return back
  }
}
