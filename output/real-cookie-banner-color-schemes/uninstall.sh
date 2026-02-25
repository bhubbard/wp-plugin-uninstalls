#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcbcs-primary-color'
wp option delete 'rcb-banner-body-design-btn-accept-all-bg'
wp option delete 'rcbcs-primary-color-hover'
wp option delete 'rcb-banner-body-design-btn-accept-all-hover-bg'
wp option delete 'rcbcs-secondary-like-primary'
wp option delete 'rcb-banner-body-design-btn-accept-essentials-use-accept-all'
wp option delete 'rcbcs-save-like-primary'
wp option delete 'rcb-save-button-use-accept-all'
wp option delete 'rcbcs-secondary-color'
wp option delete 'rcb-banner-body-design-btn-accept-essentials-bg'
wp option delete 'rcbcs-secondary-color-hover'
wp option delete 'rcb-banner-body-design-btn-accept-essentials-hover-bg'
wp option delete 'rcbcs-background-color'
wp option delete 'rcb-banner-design-bg'
wp option delete 'rcbcs-primary-font-color'
wp option delete 'rcb-banner-design-font-color'
wp option delete 'rcbcs-secondary-font-color'
wp option delete 'rcb-banner-body-design-teachings-font-color'
wp option delete 'rcbcs-link-color'
wp option delete 'rcb-group-link-color'
wp option delete 'rcbcs-link-color-hover'
wp option delete 'rcb-group-link-hover-color'

# Delete Transients
wp transient delete 'rcbcs_plugin_activation'

