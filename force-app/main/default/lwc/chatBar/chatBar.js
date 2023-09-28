import { LightningElement, api } from 'lwc';

export default class ChatBar extends LightningElement {
    @api percentage;
    handleChange(event) {
        this.percentage = event.detail.value;
    }

    get style(){
        return `width: ${this.percentage}%`
    }
}