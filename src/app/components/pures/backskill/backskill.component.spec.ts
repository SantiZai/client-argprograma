import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BackskillComponent } from './backskill.component';

describe('BackskillComponent', () => {
  let component: BackskillComponent;
  let fixture: ComponentFixture<BackskillComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BackskillComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BackskillComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
