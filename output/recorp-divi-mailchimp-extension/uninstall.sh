#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcfme_subscribe_text'
wp option delete 'recorp_divi_mailchimp'
wp option delete 'dcfme_mailchimp_rc_api'
wp option delete 'dcfme_mailchimp_rc_lists'
wp option delete 'divi_contact_form_mailchimp_rc_extension_redirect'
wp option delete 'dcfme_license_key'

