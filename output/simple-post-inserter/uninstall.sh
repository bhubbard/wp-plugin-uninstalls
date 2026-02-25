#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spi-paragraph-choice'
wp option delete 'spi-middle-choice'
wp option delete 'spi-insert-content'
wp option delete 'spi-post-type'
wp option delete 'spi-post-category'
wp option delete 'spi-post-id'

