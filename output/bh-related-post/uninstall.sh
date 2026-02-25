#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bh_related_post_options'

# Delete Transients
wp transient delete 'bh_related_post_do_activation_redirect'

