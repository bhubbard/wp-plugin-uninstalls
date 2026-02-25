#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acurax_popunder_installed_date'
wp option delete 'acurax_popunder_array'
wp option delete 'acurax_popunder_timeout'
wp option delete 'acurax_popunder_service_banners'
wp option delete 'acurax_popunder_premium_ad'
wp option delete 'acurax_popunder_version_p'
wp option delete 'acurax_popunder_td'

