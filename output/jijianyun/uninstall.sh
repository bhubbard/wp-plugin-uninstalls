#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jijianyun_options'
wp option delete 'jijianyun_corp_id'
wp option delete 'jijianyun_api_secret'
wp option delete 'jijianyun_company_name'
wp option delete 'jijianyun_company_identification'
wp option delete 'jijianyun_user_name'
wp option delete 'jijianyun_user_identify'
wp option delete 'jijianyun_email'
wp option delete 'jijianyun_mobile'
wp option delete 'jijianyun_cfg_id'

