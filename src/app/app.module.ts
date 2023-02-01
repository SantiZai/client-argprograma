import { NgModule } from '@angular/core'
import { BrowserModule } from '@angular/platform-browser'
import { NgbModule } from '@ng-bootstrap/ng-bootstrap'
import { FormsModule, ReactiveFormsModule } from '@angular/forms'

import { AppRoutingModule } from './app-routing.module'
import { AppComponent } from './app.component'
import { FooterComponent } from './components/containers/footer/footer.component'
import { HomeComponent } from './components/pages/home/home.component'
import { ContactComponent } from './components/pages/contact/contact.component'
import { AboutComponent } from './components/pages/about/about.component'
import { NotfoundComponent } from './components/pages/notfound/notfound.component'
import { LoginComponent } from './components/pures/login/login.component'
import { SocialComponent } from './components/pures/social/social.component'
import { SkillsComponent } from './components/containers/skills/skills.component'
import { SkillComponent } from './components/pures/skill/skill.component'
import { BackskillComponent } from './components/pures/backskill/backskill.component'

@NgModule({
  declarations: [
    AppComponent,
    FooterComponent,
    HomeComponent,
    ContactComponent,
    AboutComponent,
    NotfoundComponent,
    LoginComponent,
    SocialComponent,
    SkillsComponent,
    SkillComponent,
    BackskillComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
