class Tree:
    def __init__(self, label, branches=[]):
        self.label = label
        for branch in branches:
            assert isinstance(branches, Tree)
        self.branches = list(branches)

a = Tree(1)
print(a.label)