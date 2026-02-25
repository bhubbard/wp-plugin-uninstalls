#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp-location-id'
wp option delete 'sp-primary-background-color'
wp option delete 'sp-secondary-background-color'
wp option delete 'sp-tertiary-background-color'
wp option delete 'sp-font-family'
wp option delete 'sp-base-font-size'
wp option delete 'sp-item-casing'
wp option delete 'sp-primary-font-color'
wp option delete 'sp-secondary-font-color'
wp option delete 'sp-tertiary-font-color'
wp option delete 'sp-display-announcements'
wp option delete 'sp-display-photos'
wp option delete 'sp-display-currency-symbol'
wp option delete 'sp-display-price'
wp option delete 'sp-display-disclaimer'
wp option delete 'sp-attribution-image'

