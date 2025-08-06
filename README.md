# FitLog

## App Overview

**FitLog** is a simple fitness tracker that allows users to manually log their steps and activities. It helps users stay consistent with their health goals by visualizing their daily and weekly progress. Whether you’re a gym regular or just trying to stay active, FitLog gives you a simple way to track your effort.

### App Evaluation (Criteria)

- **Mobile**: Native mobile-first experience with manual entry, persistent local storage, and quick logging interface.
- **Story**: Users want to be consistent with their health and fitness routines. FitLog helps track activity in seconds, forming lasting habits.
- **Market**: Targeted at students, busy adults, or anyone without a smartwatch who still wants to track activity manually.
- **Habit**: Daily use is encouraged by streaks, summaries, and progress tracking.
- **Scope**: MVP is well-defined and achievable. Optional features add polish without being required.

---

## App Spec

### 🧩 Features

#### Required (MVP)
- [x] Manually log a workout or activity (steps, name, duration, date).
- [x] View a summary of today’s activity.
- [x] View workout history by day.

#### Optional (Bonus)
- [ ] Track streaks (days with activity logged).
- [ ] Visual progress chart (bar graph for week/month).
- [ ] Set and track goals (e.g., 3 workouts/week).
- [ ] Save favorite workouts as quick-add presets.
- [ ] Show motivational quote of the day.

---

### 🖼️ Screens

1. **Home Screen**  
   - Show today’s steps and activities  
   - Streak and goal progress  

2. **Add Activity Screen**  
   - Form: Activity name, duration or steps, date, optional notes  
   - Save to local storage  

3. **History Screen**  
   - List of past days with logged activities  
   - Tap to view details for a specific day  

4. **(Optional) Progress Screen**  
   - Chart of weekly progress  
   - Summary stats  

---

### 🧭 Navigation

#### Tab Navigation
- **Home**
- **Add**
- **History**
- **(Optional) Progress**

#### Flow Navigation
- Home → Tap "Add Activity" → Add Activity Screen  
- Add Activity → Tap Save → Back to Home  
- History → Tap Day → View activities for that day  

---

### 🖼️ Wireframes

Add your wireframe sketches here (upload images to repo and use the format below):

