#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_writer_api_key'
wp option delete 'aiwriter_rate_us'
wp option delete 'wmc_redirect'

