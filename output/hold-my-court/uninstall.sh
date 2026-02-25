#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'holdmyco_cb_court_count'
wp option delete 'holdmyco_cb_slot_minutes'
wp option delete 'holdmyco_cb_open_hour'
wp option delete 'holdmyco_cb_close_hour'
wp option delete 'holdmyco_cb_open_minute'
wp option delete 'holdmyco_cb_close_minute'
wp option delete 'hmc_cb_open_time'
wp option delete 'hmc_cb_close_time'
wp option delete 'hmc_cb_open_hour'
wp option delete 'hmc_cb_open_minute'
wp option delete 'hmc_cb_close_hour'
wp option delete 'hmc_cb_close_minute'
wp option delete 'holdmyco_cb_open_time'
wp option delete 'holdmyco_cb_close_time'

