# If a line starts with # but the second character is not #, it means it's the start of a description. So, it prints """, then prints each word on the line, indented by four spaces, and ends with """. This effectively converts the comment block to a docstring format.
/^#[^#]/ {
    printf("\"\"\"\n");
    for (i=2; i<=NF; i++) printf("%s%s%s\n", i>2 ? "    " : "", $i, i==NF ? "" : " ");
    printf("\"\"\"\n");
}
# It removes the # symbols from the description lines and prints them.
/^#[^#]/ {
    sub(/^# */, "");
    printf("%s\n", $0);
    next;
}
# For other lines, it simply prints them as they are.
{ print }