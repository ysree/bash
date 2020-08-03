def is_not_blank(s):
    return bool(s and s.strip())

print is_not_blank("")    # False
print is_not_blank("   ") # False
print is_not_blank("ok")  # True
print is_not_blank(None)  # False
