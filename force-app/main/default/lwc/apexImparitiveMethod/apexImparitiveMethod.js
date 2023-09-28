import { LightningElement } from 'lwc';
import  getContactList  from '@salesforce/apex/ContactsUtill.getContactList'
export default class ApexImparitiveMethod extends LightningElement {
    contacts;
    error;
    
    async handleLoad(){
        try {
            this.contacts = await getContactList();
            this.error = undefined;
        } catch (error) {
            this.contact = undefined;
            
        }
    }

    
    
}