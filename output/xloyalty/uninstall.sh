#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xloyalty_notice_dismissed'
wp option delete 'xloyalty_license_key'
wp option delete 'xloyalty_registration_company'
wp option delete 'xloyalty_registration_email'
wp option delete 'xloyalty_points_per_euro'
wp option delete 'xloyalty_conversion_rate'

