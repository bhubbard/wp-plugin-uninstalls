#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thumbgenie_image_model'
wp option delete 'thumbgenie_quality'
wp option delete 'thumbgenie_style'
wp option delete 'thumbgenie_size'
wp option delete 'thumbgenie_api_key'

# Delete Transients
wp transient delete 'thumbgenie_subscription_data'

