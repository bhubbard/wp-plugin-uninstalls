#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwd_mcer_options'
wp option delete 'mwd_mcer_latest_fxrates'
wp option delete 'mwd_mcer_fxcurrencies'
wp option delete 'widget_mfr'

# Delete Transients
wp transient delete 'mwd_mcer_fxrates'
wp transient delete 'mwd_mcer_fxcurrencies'

