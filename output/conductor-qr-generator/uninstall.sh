#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conductor_qr_generator_logo_url'
wp option delete 'conductor_qr_generator_footer_text'

