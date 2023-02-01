import { TestBed } from '@angular/core/testing';

import { BringSkillsService } from './bring-skills.service';

describe('BringSkillsService', () => {
  let service: BringSkillsService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(BringSkillsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
