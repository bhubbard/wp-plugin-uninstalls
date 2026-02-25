#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yesnology_secretkey'
wp option delete 'yesnology_username'
wp option delete 'yesnology_password'
wp option delete 'yesnology_tenatId'
wp option delete 'yesnology_companyId'
wp option delete 'yesnology_clientId'
wp option delete 'yesnology_secretKey'
wp option delete 'yesnology_companySelect'
wp option delete 'yesnology_bodyColor'
wp option delete 'yesnology_textColor'
wp option delete 'yesnology_buttonPosition'
wp option delete 'yesnology_submit_confirm'

