#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zedna_contact_form_grsitekey'
wp option delete 'zedna_contact_form_grsecretkey'
wp option delete 'zedna_contact_form_allowattachment'
wp option delete 'zedna_contact_form_keepattachment'
wp option delete 'zedna_contact_form_defaultemail'
wp option delete 'zedna_contact_form_defaultsubject'
wp option delete 'zedna_contact_form_lang_wrongmail'
wp option delete 'zedna_contact_form_lang_emptymessage'
wp option delete 'zedna_contact_form_lang_messagesent'
wp option delete 'zedna_contact_form_lang_messagenotsent'
wp option delete 'zedna_contact_form_lang_recaptcha'
wp option delete 'zedna_contact_form_lang_email'
wp option delete 'zedna_contact_form_lang_message'
wp option delete 'zedna_contact_form_lang_submit'

