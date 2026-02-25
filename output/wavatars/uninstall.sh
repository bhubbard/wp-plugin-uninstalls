#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wavatar_auto'
wp option delete 'wavatar_noplug'
wp option delete 'wavatar_size'
wp option delete 'wavatar_border'
wp option delete 'wavatar_suffix'
wp option delete 'wavatar_prefix'
wp option delete 'wavatar_gravatars'
wp option delete 'wavatar_rating'
wp option delete 'wavatar_email_blank'

