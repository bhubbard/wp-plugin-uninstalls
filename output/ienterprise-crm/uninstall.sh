#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ienterprisecrm_endpoint'
wp option delete 'ienterprisecrm_submitbtn'
wp option delete 'ienterprisecrm_username'
wp option delete 'ienterprisecrm_password'
wp option delete 'ienterprisecrm_recaptcha'
wp option delete 'ienterprisecrm_recaptcha_key'
wp option delete 'ienterprisecrm_recaptcha_secret'
wp option delete 'ienterprisecrm_is_connected'
wp option delete 'ienterprisecrm_fields'
wp option delete 'ienterprisecrm_keywords'

