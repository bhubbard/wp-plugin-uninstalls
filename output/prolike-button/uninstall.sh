#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'background-image-field-like'
wp option delete 'background-image-field-dislike'
wp option delete 'plb_background-image-field-like'
wp option delete 'plb_background-image-field-dislike'
wp option delete 'plb_your_style_css'

