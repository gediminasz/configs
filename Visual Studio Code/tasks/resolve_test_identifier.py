import sys
import re


def find_first_match(pattern, lines):
    for line in lines:
        match = re.match(pattern, line)
        if match:
            return match.group(1)


path = sys.argv[1]
line_number = int(sys.argv[2])

with open(path, 'r') as f:
    lines = f.readlines()
lines = list(reversed(lines[:line_number]))

method_name = find_first_match(r'.*def (test_\w+).*', lines)
class_name = find_first_match(r'.*class (\w+).*', lines)

print '{}:{}.{}'.format(path, class_name, method_name)
