import json
 
 
def get_json(file):
    def get_titles():
        with open(file) as f:
            line = f.readlines()[1].split(' ')
            head = [h for h in line if h != '']
            head[-1] = head[-1][:-1]
        return head
 
    lis = []
    titles = get_titles()
    index = 1
    with open(file) as f:
        for line in f.readlines()[2:]:
            line = line.split(' ')
            num = [data for data in line if data != '']
            try:
                num = list(map(int, num))
            except ValueError:
                continue
            ind = {"index": {}}
            index += 1
            lis.extend([ind, dict(zip(titles, num))])
    line = 1
    with open(file.split('.')[0]+'.json', "w") as fp:
        for dat in lis:
            json.dump(dat, fp)
            line += 1
            fp.write('\n')
            if line % 2 != 0:
                fp.write('\n')
    return "Success"
 
print get_json("sample.txt")
