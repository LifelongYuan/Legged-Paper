let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Legged Robot","Quadruped","optimization"];
let titles_method = ["Reinforcement Learning","Self-Supervised","control","locomotion","navigation","mpc","differential"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Koushil Sreenath", "Sergey Levine", "Lerrel Pinto","Yong Liu",
                    "Wei Yang","Qiuguo Zhu","Marco Hutter","Jemin Hwangbo","Sangbae Kim","Xiaolong Wang","Wei Zhang"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Robotics
    "IROS","ICRA","CoRL","RAL","IEEE Robotics and Automation Letters","Science Robotics","IEEE Transactions on Robotics and Automation"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
