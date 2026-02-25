#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photo-gallery-plus-wizard-set-up'
wp option delete 'pgp_wpgeeks_site_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'photo-gallery-plus-version-number'
wp option delete 'photo_gallery_plus_do_activation_redirect'

