#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'know__forms__element__input_styles'
wp option delete 'know__forms__element__input_classes'
wp option delete 'know__forms__element__textarea_styles'
wp option delete 'know__forms__element__textarea_classes'
wp option delete 'know__forms__element__select_styles'
wp option delete 'know__forms__element__select_classes'
wp option delete 'know__forms__element__button_styles'
wp option delete 'know__forms__element__button_classes'
wp option delete 'know--forms--settings-group'

