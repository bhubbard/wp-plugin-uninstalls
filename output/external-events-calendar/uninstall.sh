#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'extevtcal_date_formatting'
wp option delete 'extevtcal_date_customformat'
wp option delete 'extevtcal_link_position'
wp option delete 'extevtcal_use_css'
wp option delete 'extevtcal_currentday_behavior'
wp option delete 'links_updated_date_format'
wp option delete 'extevtcal_db_version'

