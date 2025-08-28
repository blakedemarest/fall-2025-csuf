# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Fall 2025 academic materials and study resources for CSUF (California State University, Fullerton) courses. This repository is designed to track academic progress across devices and different LLM agents. This directory contains course syllabi, educational resources, and assignments for a Business Analytics major with Mathematics minor.

## Course Schedule

**Classes:**
- **CHIC 106** - Introduction to Chicano/Chicana Studies (Online, Asynchronous)
  - Instructor: Nadia Zepeda
  - Section 50, Class Nbr 15285
  - **Note**: Syllabus not available yet (expected later this week)
- **MATH 320** - Introduction to Mathematical Computation (Mon/Wed 4:00-5:15 PM, MH 452 Computer Lab)
  - Instructor: Christine Deeb (cdeeb@fullerton.edu)
  - Section 01, Class Nbr 18730
- **MATH 439** - Intermediate Data Analysis (Mon/Wed 10:00-11:50 AM, MH 452 Computer Lab)
  - Instructor: Dr. Kevin Nichols (Knichols@fullerton.edu)
  - Section 01, Class Nbr 18373
- **MGMT 449** - Seminar in Strategic Management (Tue 10:00 AM-12:45 PM, Zoom)
  - Instructor: Chethan D Srikant, PhD (csrikant@fullerton.edu)
  - Section 07, Class Nbr 11869

## Directory Structure

### Repository Organization
```
fall-2025-csuf/
├── CLAUDE.md                    # AI agent instructions (this file)
├── FALL_2025_CALENDAR.md        # Master calendar and todo list
├── requirements.txt             # Python dependencies
├── .venv/                       # Python virtual environment
├── CHIC_106/                    # Chicano Studies course materials
│   ├── syllabus/
│   └── assignments/
├── MATH_320_INTRODUCTION_TO_MATH_COMPUTATION/  # MATLAB Course
│   ├── homework/                # Submitted assignments
│   │   └── templates/           # Assignment templates
│   ├── practice/                # Scratch/practice files
│   ├── course_docs/            # Syllabus and homework info
│   └── textbook/               # Gilat textbook materials
│       ├── markdown/           # Markdown conversions
│       └── pdfs_docx_pptx/     # Original PDFs and slides
├── MATH_439_INTERMEDIATE_DATA_ANALYSIS/  # R Course
│   ├── MATH_439_R_PROJECTS/    # R work directory
│   │   ├── tutorials/          # R learning tutorials
│   │   ├── homework/           # R homework assignments
│   │   ├── case_studies/       # Case study analyses + datasets
│   │   ├── notes/              # Class notes and simulations
│   │   ├── data/               # Shared datasets
│   │   └── outputs/            # Generated plots and outputs
│   └── syllabus/
└── MGMT_449/                    # Strategic Management capstone
    ├── session_guidance/        # Weekly session documents
    ├── textbook/                # Strategic Management PDF
    ├── hbs_cases/              # Harvard Business School cases
    ├── group_project/
    └── syllabus/
```

### File Naming Conventions
- **Homework files**: `Lastname_Firstname_HW#.m` (MATLAB) or `Lastname_Firstname_HW#.R` (R)
- **Case studies**: `Lastname_Firstname_Case#.pdf`
- **Group projects**: `Team#_ProjectName_Draft.pdf` / `Team#_ProjectName_Final.pdf`
- **Notes**: `COURSE_Week#_Topic.md` or `COURSE_Chapter#_Notes.md`

### Course Directories
- **CHIC_106/** - Chicano Studies course materials and syllabus
  - Status: Syllabus pending, directory structure TBD
- **MATH_320_INTRODUCTION_TO_MATH_COMPUTATION/** - MATLAB course materials
  - **homework/**: All submitted assignments (Demarest_Blake_HW#.m format)
  - **homework/templates/**: Assignment templates for reuse
  - **practice/**: Scratch files and experimental code
  - **course_docs/**: Syllabus, homework info, assignment lists
  - **textbook/**: All Gilat textbook materials (markdown + PDFs)
- **MATH_439_INTERMEDIATE_DATA_ANALYSIS/** - R course materials
  - **MATH_439_R_PROJECTS/tutorials/**: R learning tutorials and examples
  - **MATH_439_R_PROJECTS/homework/**: R homework assignments
  - **MATH_439_R_PROJECTS/case_studies/**: Case analyses with associated datasets
  - **MATH_439_R_PROJECTS/notes/**: Class notes and simulation files
  - **MATH_439_R_PROJECTS/data/**: Shared datasets used across multiple files
  - **MATH_439_R_PROJECTS/outputs/**: Generated plots, PDFs, and analysis results
- **MGMT_449/** - Strategic Management capstone course materials
  - Contains: Session guidance documents, textbook PDF, HBS cases, group project materials

## Course-Specific AI Agent Instructions

### CHIC 106 - Introduction to Chicano/Chicana Studies
**Status**: Syllabus pending (expected later this week)
**When asked about CHIC 106**:
- Inform that syllabus is not yet available
- Check for updates in the CHIC_106 directory

### MATH 320 - Introduction to Mathematical Computation
**Key Course Information**:
- **Software**: MATLAB (required, free via CSUF)
- **Textbook**: "MATLAB: An Introduction with Applications" 6th Ed. by Amos Gilat
- **Format**: Flipped classroom - read notes and watch videos before class
- **Office Hours**: MW 2:00-2:20pm, 11:20-11:50am (in-person); Tu 12:00-1:50pm (Zoom)

**When asked about MATH 320 homework**:
1. Check homework template on Canvas
2. Reference textbook problems from end of chapter
3. Homework typically due 11:59 PM on specified dates
4. Remind about full name requirement on all submissions
5. Use MATLAB exclusively for homework completion
6. **When creating homework files**: Always format using template reference: '/mnt/e/REPOS/fall-2025-csuf/MATH_320_INTRODUCTION_TO_MATH_COMPUTATION/homework/templates/Lastname_Firstname_HW_template.m'

**CRITICAL FUNCTION RESTRICTION PROTOCOL:**
- **BEFORE writing ANY MATLAB homework code, you MUST:**
  1. Check the syllabus schedule in `course_docs/math_320_syllabus.md` to see which chapters have been covered up to that homework's due date
  2. Reference ONLY the textbook chapters in `textbook/markdown/` that correspond to covered material
  3. Use ONLY MATLAB functions introduced in those chapters - NO advanced functions not yet taught
- **Chapter-by-homework mapping from syllabus:**
  - Chapter 1 HW (Due Sept 10): Use only Chapter 1 functions
  - Chapter 2 HW (Due Sept 17): Use only Chapters 1-2 functions  
  - Chapter 3 HW (Due Sept 24): Use only Chapters 1-3 functions
  - Chapter 5 HW (Due Oct 8): Use only Chapters 1-5 functions
  - Chapter 10 HW (Due Oct 15): Use only Chapters 1-5, 10 functions
  - Chapter 11 HW (Due Oct 22): Use only Chapters 1-5, 10-11 functions
  - Chapter 6 HW (Due Nov 5): Use only Chapters 1-6, 10-11 functions
  - Chapter 7 HW (Due Nov 19): Use only Chapters 1-7, 10-11 functions
  - Chapter 8 HW (Due Dec 3): Use only Chapters 1-8, 10-11 functions

**When asked about MATH 320 quizzes/exams**:
- **Quizzes**: 5 total, in-person, 15 minutes each, every other Wednesday
- **Exam 1**: Sept 24 (Ch 1-4)
- **Exam 2**: Nov 5 (Ch 5, 10, 11, 6)
- **Final**: Dec 17, 5:00 PM (all chapters, cumulative)
- All exams are coding-based, completed in MATLAB

**Key Dates**:
- Labor Day (Sept 1): No class
- Fall Recess (Nov 24-26): No class
- Last day to drop: Sept 9

**Grading**:
- Homework: 15%
- Quizzes: 15%
- Midterms: 40%
- Final: 30%

### MATH 439 - Intermediate Data Analysis
**Key Course Information**:
- **Software**: R and RStudio (required, free)
- **Textbook**: "A Modern Approach to Regression with R" by Simon Sheather
- **Office Hours**: MW 12:00-12:50pm or by appointment (MH-154)

**When asked about MATH 439 assignments**:
- **Homework**: 6 assignments total (15% of grade)
- **Case Studies**: 2-3 total (20% of grade)
- Check R tutorials in MATH_439_R_PROJECTS/tutorials/ directory for code examples

**When asked about MATH 439 exams**:
- **Midterm 1**: Oct 28
- **Midterm 2**: Dec 2
- **Final**: Due Friday of finals week at 11:59 PM
- Grades are curved (roughly top 10% get A's)

**Key Topics to Study**:
- Bootstrapping
- Simple/Multiple Linear Regression
- ANOVA (one-way, two-way, split-plot)
- Logistic Regression
- Poisson Regression

**Important Dates**:
- Labor Day (Sept 2): No class
- Fall Recess (Nov 27): No class (but class on Nov 25)
- Last day to drop: Sept 10

**Grading** (Curved):
- Top 10%: A
- Next 20%: B
- Next 40%: C
- Next 20%: D
- Bottom 10%: F

### MGMT 449 - Seminar in Strategic Management
**Key Course Information**:
- **Format**: Fully online synchronous (Zoom), flipped classroom
- **Textbook**: "Strategic Management: Creating Competitive Advantage" 11th Ed. by Dess et al.
- **HBS Cases**: Purchase at https://hbsp.harvard.edu/import/1326943
- **Lecture Videos**: Available on Dropbox (link in syllabus)
- **Office Hours**: Wed 9:00am-12:00pm (Zoom)

**When asked about MGMT 449 participation**:
- **Case Discussions**: 5 total (4 points each)
- Must upload participation notes after each discussion
- Quality levels: L1 (0.5pt), L2 (1pt), L3 (2pt), L4 (3pt)
- Maximum 4 points per discussion
- Can submit make-up write-ups for missed/low participation

**When asked about MGMT 449 exams**:
- **Midterm I**: Sept 30 (Ch 1-3)
- **Midterm II**: Dec 2 (Ch 5-7)
- Both online with Proctorio, multiple choice
- Closed book format

**When asked about MGMT 449 group project**:
- **Draft Due**: Oct 7 (5+ pages)
- **Final Report Due**: Dec 16 (12+ pages)
- Analyze a company facing significant problems
- Include: Introduction/SWOT, Analysis, Recommendations
- Worth 22% of grade

**Key Session Types**:
1. **Case-Based Sessions**: Read case, watch videos, participate in discussion
2. **Conceptual Sessions**: Ch 2 & 6, no cases, interactive discussion
3. **Integrative Case**: Uses multiple chapters, sustainability focus

**Important Policies**:
- Cameras must be ON during all Zoom sessions
- NO use of external case analyses (academic dishonesty)
- AI use permitted only for understanding concepts and grammar
- Maximum 2 make-up assignments for absences

**Grading Breakdown**:
- Participation: 24%
- Check-in Quizzes: 8%
- Exams: 36%
- CBE Assessment: 10%
- Group Project: 22%
- SOQ Extra Credit: 1%

## Key Software Requirements

### MATH 320
- **MATLAB** (free via CSUF license: https://www.fullerton.edu/it/services/software/matlab.html)
- **LaTeX** for homework documentation (Overleaf or local installation)
- License #898604 for MATLAB support

### MATH 439  
- **R Statistical Software** (free from r-project.org)
- **RStudio** IDE (recommended)
- Access available in MH 452 Computer Lab
- **R Installation Path**: `C:\Program Files\R\R-4.5.1\bin\x64\R.exe`

### Running R Scripts via Bash (for AI Agents)
When executing R scripts through the Bash tool, use the following command format:
```bash
"C:\Program Files\R\R-4.5.1\bin\x64\Rscript.exe" script_name.R
```
Note: Always use the full path to Rscript.exe when running R scripts from bash commands.

### MGMT 449
- **Zoom** for synchronous online sessions (CSUF authentication required)
- **Microsoft Office 365** (free for CSUF students)
- **Chrome browser** for Proctorio exams
- **Grammarly** (recommended: https://www.fullerton.edu/it/students/software/grammarly/)
- **Turnitin** for plagiarism checking

## Academic Policies

### Prerequisites
- **CHIC 106**: Completion of G.E. Category C.1 or C.2
- **MATH 320**: MATH 250B with grade C or better
- **MATH 439**: MATH 338 and (MATH 170B/207/250B) with grade C or better
- **MGMT 449**: All business core courses completed (permit required)

### Grading Requirements
- MGMT 449 requires minimum "C" grade for graduation requirement
- All math prerequisites require "C" (2.0) or better

### Important Academic Dates (Fall 2025)
- **Sept 9-10**: Last day to add/drop without W (varies by department)
- **Sept 18-19**: Last day for flexible withdrawal (Math dept)
- **Nov 14-15**: Last day for serious/compelling withdrawal
- **Dec 5**: Last day for medical withdrawal

## Contact Information

### Instructor Contacts
- **MATH 320**: Christine Deeb (cdeeb@fullerton.edu), Office: MH-063
- **MATH 439**: Dr. Kevin Nichols (Knichols@fullerton.edu), Office: MH-154
- **MGMT 449**: Dr. Chethan Srikant (csrikant@fullerton.edu), Office: SGMH 5358

### Department Contacts
- **Chicano Studies**: ethnicstudies@fullerton.edu
- **Mathematics**: (657) 278-3631
- **Management**: SGMH 5341 (permit requests)
- **CSUF IT Support**: (657) 278-7777 or StudentITHelpDesk@fullerton.edu

### Textbook Information
- **Titan Bookstore**: www.titanshops.com, (657) 278-2399
- **MATLAB Support**: 508-647-7000 (press 3), Mon-Fri 8:30am-8:00pm EST

## AI Agent Quick Reference Guide

### When asked about deadlines or due dates:
1. Check course syllabus in respective directory
2. Reference Canvas for most current information
3. Note that assignments typically due at 11:59 PM
4. **Always update FALL_2025_CALENDAR.md with new deadlines**

### When asked about exam preparation:
1. **MATH 320**: Focus on MATLAB coding, review homework problems
2. **MATH 439**: Review R code, understand regression concepts
3. **MGMT 449**: Study textbook concepts only (no case materials in exams)

### When asked about homework help:
1. Direct to instructor office hours first
2. Reference textbook chapters and examples
3. For MATLAB/R code issues, check tutorial files in course directories
4. **Update progress tracking templates when assignments are completed**

### When asked about technical issues:
1. Canvas issues: (855) 302-7528
2. MATLAB issues: MathWorks support with license #898604
3. Zoom/Proctorio: CSUF IT Help Desk (657) 278-8888

### When asked about group work:
- Only MGMT 449 has group project requirement
- Teams form by Sept 23
- Draft due Oct 7, Final due Dec 16

### When asked about progress tracking:
1. Use individual course progress templates for detailed tracking
2. Update semester overview weekly for big-picture view
3. Reference FALL_2025_CALENDAR.md for comprehensive timeline
4. Maintain grade tracking tables as scores become available

## Academic Progress Tracking

### Fall 2025 Calendar & Todo List
A comprehensive calendar and todo list with all semester assignments, exam dates, and important due dates is maintained at:
`/mnt/e/REPOS/fall-2025-csuf/FALL_2025_CALENDAR.md`

**When adding assignments, exam dates, or other important due dates**, append them to the FALL_2025_CALENDAR.md file to keep the master calendar current.

#### Calendar Usage Notes:
- File contains checkboxes for tracking assignment completion
- Organized chronologically by week for easy planning
- Major exams and projects marked with ⚠️ symbols
- Includes course breakdown summary at bottom
- Updated regularly throughout semester - always check for latest deadlines

### Grade Tracking Templates

#### Individual Course Progress Template:
```markdown
## [COURSE_CODE] - [COURSE_NAME]
**Target Grade:** [A/B/C]  
**Current Status:** [On Track/Behind/Ahead]

### Assignments Completed:
- [ ] HW1 - [Score]/[Total] - [Date Submitted]
- [ ] HW2 - [Score]/[Total] - [Date Submitted]
- [ ] Quiz1 - [Score]/[Total] - [Date Taken]

### Upcoming Deadlines:
- [Assignment Name] - Due: [Date] - Weight: [%]

### Grade Breakdown:
| Component | Weight | Current Score | Points Earned | Status |
|-----------|---------|---------------|---------------|--------|
| Homework  | 15%     | --/--         | --            | --     |
| Quizzes   | 15%     | --/--         | --            | --     |
| Midterms  | 40%     | --/--         | --            | --     |
| Final     | 30%     | --/--         | --            | --     |
| **Total** | **100%**| **--**        | **--**        | **--** |
```

### Semester Overview Template:
```markdown
## Fall 2025 Semester Progress

**Overall GPA Target:** [3.0/3.5/4.0]  
**Current Status:** [Week X of 16]  
**Study Hours This Week:** [X hours]

### Course Status Summary:
| Course    | Credits | Target | Current | Status     | Notes |
|-----------|---------|---------|---------|------------|-------|
| CHIC 106  | 3       | A       | --      | On Track   | --    |
| MATH 320  | 4       | B       | --      | On Track   | --    |
| MATH 439  | 3       | A       | --      | On Track   | --    |
| MGMT 449  | 3       | B       | --      | On Track   | --    |
| **Total** | **13**  | **--**  | **--**  | **--**     | **--**|

### Weekly Review Checklist:
- [ ] All assignments submitted on time
- [ ] Attended all classes/Zoom sessions
- [ ] Completed required readings
- [ ] Reviewed lecture materials
- [ ] Updated grade tracking
- [ ] Planned next week's priorities
```

## Project Organization Standards

### MATH_320 (MATLAB) Organization:
**When creating MATLAB files:**
- **Homework submissions**: Place in `homework/` directory using format `Demarest_Blake_HW#.m`
- **Practice/scratch work**: Place in `practice/` directory  
- **Templates**: Store in `homework/templates/` for reuse
- **Course documents**: Keep syllabus and info files in `course_docs/`

### MATH_439 (R) Organization:
**When creating R files:**
- **R tutorials**: Place in `MATH_439_R_PROJECTS/tutorials/`
- **Homework assignments**: Place in `MATH_439_R_PROJECTS/homework/`
- **Case studies**: Place in `MATH_439_R_PROJECTS/case_studies/` with associated datasets
- **Class notes**: Place in `MATH_439_R_PROJECTS/notes/`
- **Shared datasets**: Place in `MATH_439_R_PROJECTS/data/`
- **Generated outputs**: Place in `MATH_439_R_PROJECTS/outputs/`

**File Path References in R Code:**
- From `tutorials/`: Use `../data/filename.csv` for shared datasets
- From `notes/`: Use `../case_studies/filename.csv` or `../data/filename.csv`
- From `case_studies/`: Datasets in same directory can use `filename.csv`

## Development Notes

When working with course materials:
- Always check syllabi for most current requirements
- Python scripts available for content transformation tasks
- Maintain academic formatting standards
- Reference specific file locations when directing to resources
- Note that CHIC 106 materials are pending
- If you need to add a package, remember to add it to requirements.txt FIRST , and THEN apply it to our .venv