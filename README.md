# Cafe App Template 🍵

A SwiftUI iOS app template for a café — featuring a menu, service showcase, table booking form, and contact info.

Built as a UI/layout exercise to practice SwiftUI component architecture.

---

## Screenshots

<p>
  <img src="Screenshots/screen1.png" width="30%">
  <img src="Screenshots/screen2.png" width="30%">
  <img src="Screenshots/screen3.png" width="30%">
</p>

---

## Features

- **Hero header** with background image and overlay
- **About section** with description and external link
- **Services section** with reusable `ServiceRowView` component
- **Promo banner** with discount code
- **Menu** with item list, prices, and descriptions
- **Table booking form** with reusable `BookingTextField` component
- **Contacts & opening hours** section

---

## Tech Stack

- Swift 5
- SwiftUI
- Xcode 16
- iOS 17+
- No external dependencies

---

## Project Structure

```
Cafe App/
├── ContentView.swift       # Root view — assembles all sections
├── HeaderView.swift        # Hero image with café name
├── AboutView.swift         # Description and "Learn more" link
├── ServicesView.swift      # Services list with reusable ServiceRowView
├── PromoView.swift         # Discount promo banner
├── MenuView.swift          # Menu items with MenuItem data model
├── BookingView.swift       # Table booking form with reusable BookingTextField
└── ContactsView.swift      # Address, phone, email and opening hours
```

---

## What I Learned

- Breaking a large `ContentView` into small, focused components
- Building reusable views (`ServiceRowView`, `BookingTextField`, `MenuItemView`)
- Working with `ZStack` overlays and image modifiers
- Using `ForEach` with a data model instead of repeating UI code

---

## Author

**Dmytro Listenin**
- GitHub: [@DmytroListenin98](https://github.com/DmytroListenin98)
- LinkedIn: [Dmytro Listenin](https://www.linkedin.com/in/dmytro-listenin-7503a73ab/)
- Telegram: [@AppleFansUkr](https://t.me/AppleFansUkr)
