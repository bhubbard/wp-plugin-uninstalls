#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crsb_spammers_list'
wp option delete 'crsb_share_data'
wp option delete 'crsb_share_data_last'
wp option delete 'crsb_share_data_resp_raw'
wp option delete 'crsb_db_version'

