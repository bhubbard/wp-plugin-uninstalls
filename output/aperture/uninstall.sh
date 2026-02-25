#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aperture_registration_error'
wp option delete 'aperture_registration_success'
wp option delete 'aperture_temporary_code'
wp option delete 'aperture_microsub_url'

