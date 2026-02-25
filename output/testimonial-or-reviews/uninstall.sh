#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orphita_testimonial_or_reviews_user_role_key'
wp option delete 'oxi_div_database'
wp option delete 'orphita_review_data'
wp option delete 'orphita_review_data_active'
wp option delete 'orphita_testimonial_or_reviews_license_key'
wp option delete 'orphita_testimonial_or_reviews_license_status'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_Orphita_testimonial_or_reviews_welcome_activation_redirect'

