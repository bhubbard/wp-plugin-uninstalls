#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uep_pwd'
wp option delete 'uep_to_email'
wp option delete 'uep_subject'
wp option delete 'uep_bcc_email'
wp option delete 'uep_body'
wp option delete 'uep_from_name'
wp option delete 'uep_from_email'

