# Src is the original key,
# Dst is the desired keybind
let
  escape = 30064771113;
  capsLock = 30064771129;
  fn = 1095216660483;
  control = 30064771296;
  option = 30064771298;
in
{
  system.keyboard = {
    enableKeyMapping = true;

    # Caps Lock -> Escape
    remapCapsLockToEscape = true;

    userKeyMapping = [
      # Escape -> Caps Lock
      {
        HIDKeyboardModifierMappingSrc = escape;
        HIDKeyboardModifierMappingDst = capsLock;
      }

      # swap fn & control
      # {
      #   HIDKeyboardModifierMappingSrc = fn;
      #   HIDKeyboardModifierMappingDst = control;
      # }
      # {
      #   HIDKeyboardModifierMappingSrc = control;
      #   HIDKeyboardModifierMappingDst = fn;
      # }
    ];
  };
}
