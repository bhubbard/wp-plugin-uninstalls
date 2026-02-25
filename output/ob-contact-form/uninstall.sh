#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obcf_to_email'
wp option delete 'obcf_from_email'
wp option delete 'obcf_from_name'
wp option delete 'obcf_form_subject'
wp option delete 'obcf_form_success'
wp option delete 'obcf_form_error'

