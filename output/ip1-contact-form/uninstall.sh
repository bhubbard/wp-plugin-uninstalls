#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip1_contact_form_header'
wp option delete 'ip1_contact_form_submit_text'
wp option delete 'ip1_contact_form_default_properties'
wp option delete 'ip1_contact_form_properties'
wp option delete 'ip1_contact_form_labels_header'
wp option delete 'ip1_contact_form_option_labels'
wp option delete 'ip1_contact_form_token'
wp option delete 'ip1_contact_form_default_labels'

