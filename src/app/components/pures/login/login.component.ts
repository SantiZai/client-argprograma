import { Component, OnInit } from '@angular/core'
import { FormBuilder, FormGroup, Validators} from '@angular/forms'

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  form: FormGroup

  constructor(private formBuilder: FormBuilder) {
    this.form = this.formBuilder.group({
      name: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.email]],
      message: ['', [Validators.required, Validators.minLength(10)]]
    })
  }

  ngOnInit(): void {

  }

  get Name() {
    return this.form.get('name')
  }

  get Email() {
    return this.form.get('email')
  }

  get Message() {
    return this.form.get('message')
  }

  get NameValid() {
    return this.Name?.touched && !this.Name.valid
  }

  get EmailValid() {
    return this.Email?.touched && !this.Email.valid
  }

  get MessageValid() {
    return this.Message?.touched && !this.Message.valid
  }

  onSubmit(event: Event) {
    event.preventDefault

    if(this.form.valid) {
      alert('Todo salió bien')
    } else {
      this.form.markAllAsTouched()
    }
  }
}
