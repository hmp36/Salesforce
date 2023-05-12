import { LightningElement } from 'lwc';
export default class anotherLWC extends LightningElement {
  greeting = 'Human';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}