// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import EventEmitterController from "./event_emitter_controller"
application.register("event-emitter", EventEmitterController)

import Ui__AvatarController from "./ui/avatar_controller"
application.register("ui--avatar", Ui__AvatarController)

import Ui__DialogController from "./ui/dialog_controller"
application.register("ui--dialog", Ui__DialogController)

import Ui__DropdownController from "./ui/dropdown_controller"
application.register("ui--dropdown", Ui__DropdownController)

import Ui__PopoverController from "./ui/popover_controller"
application.register("ui--popover", Ui__PopoverController)

import Ui__SheetController from "./ui/sheet_controller"
application.register("ui--sheet", Ui__SheetController)
