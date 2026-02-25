#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptreq_post_types'
wp option delete 'ptreq_character_limit'
wp option delete 'ptreq_ignore_chars'

